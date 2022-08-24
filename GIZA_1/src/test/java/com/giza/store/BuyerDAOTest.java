package com.giza.store;

import com.giza.store.dao.BuyerDAO;
import com.giza.store.enitity.Buyer;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class BuyerDAOTest {

    @Test
    void contextLoads() {

        BuyerDAO buyerDAO = new BuyerDAO() {
            @Override
            public Buyer findById(Integer id) {
                return null;
            }

            @Override
            public List<Buyer> findAll() {
                return null;
            }

            @Override
            public List<Buyer> findAll(Sort sort) {
                return null;
            }

            @Override
            public List<Buyer> findAllById(Iterable<Long> longs) {
                return null;
            }

            @Override
            public <S extends Buyer> List<S> saveAll(Iterable<S> entities) {
                return null;
            }

            @Override
            public void flush() {

            }

            @Override
            public <S extends Buyer> S saveAndFlush(S entity) {
                return null;
            }

            @Override
            public <S extends Buyer> List<S> saveAllAndFlush(Iterable<S> entities) {
                return null;
            }

            @Override
            public void deleteAllInBatch(Iterable<Buyer> entities) {

            }

            @Override
            public void deleteAllByIdInBatch(Iterable<Long> longs) {

            }

            @Override
            public void deleteAllInBatch() {

            }

            @Override
            public Buyer getOne(Long aLong) {
                return null;
            }

            @Override
            public Buyer getById(Long aLong) {
                return null;
            }

            @Override
            public <S extends Buyer> List<S> findAll(Example<S> example) {
                return null;
            }

            @Override
            public <S extends Buyer> List<S> findAll(Example<S> example, Sort sort) {
                return null;
            }

            @Override
            public Page<Buyer> findAll(Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Buyer> S save(S entity) {
                return null;
            }

            @Override
            public Optional<Buyer> findById(Long aLong) {
                return Optional.empty();
            }

            @Override
            public boolean existsById(Long aLong) {
                return false;
            }

            @Override
            public long count() {
                return 0;
            }

            @Override
            public void deleteById(Long aLong) {

            }

            @Override
            public void delete(Buyer entity) {

            }

            @Override
            public void deleteAllById(Iterable<? extends Long> longs) {

            }

            @Override
            public void deleteAll(Iterable<? extends Buyer> entities) {

            }

            @Override
            public void deleteAll() {

            }

            @Override
            public <S extends Buyer> Optional<S> findOne(Example<S> example) {
                return Optional.empty();
            }

            @Override
            public <S extends Buyer> Page<S> findAll(Example<S> example, Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Buyer> long count(Example<S> example) {
                return 0;
            }

            @Override
            public <S extends Buyer> boolean exists(Example<S> example) {
                return false;
            }
        };
    }

}
