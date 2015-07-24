/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-backend-jpa:src/main/java/project/search/MassIndexerService.p.vm.java
 */
package com.app.demo.search;

import static org.hibernate.search.jpa.Search.getFullTextEntityManager;

import java.util.Arrays;

import javax.annotation.PostConstruct;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.commons.lang.time.StopWatch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;

import com.app.demo.domain.Person;
import com.app.demo.domain.Role;

@Named
@Lazy(false)
public class MassIndexerService {
    private static final Logger log = LoggerFactory.getLogger(MassIndexerService.class);
    protected static final Class<?>[] CLASSES_TO_BE_INDEXED = { Person.class //
            , Role.class //
    };
    @PersistenceContext
    protected EntityManager entityManager;
    @Value("${massIndexer.nbThreadsToLoadObjects:1}")
    protected int threadsToLoadObjects;
    @Value("${massIndexer.batchSizeToLoadObjects:10}")
    protected int batchSizeToLoadObjects;
    @Value("${massIndexer.nbThreadsForSubsequentFetching:1}")
    protected int threadsForSubsequentFetching;

    @PostConstruct
    public void createIndex() {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        try {
            getFullTextEntityManager(entityManager) //
                    .createIndexer(CLASSES_TO_BE_INDEXED) //
                    .batchSizeToLoadObjects(batchSizeToLoadObjects) //
                    .threadsToLoadObjects(threadsToLoadObjects) //
                    .threadsForSubsequentFetching(threadsForSubsequentFetching) //
                    .start();
        } finally {
            stopWatch.stop();
            log.info("Indexed {} in {}", Arrays.toString(CLASSES_TO_BE_INDEXED), stopWatch.toString());
        }
    }
}
