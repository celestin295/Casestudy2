package com.giza.store;

import com.giza.store.dao.SellerDAO;
import com.giza.store.enitity.Seller;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class SellerDAOTest {

    @Test
    void contextLoads() {

        SellerDAO sellerDAO = new SellerDAO() {
            @Override
            public Seller findById(Integer id) {
                return null;
            }

            @Override
            public List<Seller> findAll() {
                return null;
            }

            @Override
            public List<Seller> findAll(Sort sort) {
                return null;
            }

            @Override
            public List<Seller> findAllById(Iterable<Long> longs) {
                return null;
            }

            @Override
            public <S extends Seller> List<S> saveAll(Iterable<S> entities) {
                return null;
            }

            @Override
            public void flush() {

            }

            @Override
            public <S extends Seller> S saveAndFlush(S entity) {
                return null;
            }

            @Override
            public <S extends Seller> List<S> saveAllAndFlush(Iterable<S> entities) {
                return null;
            }

            @Override
            public void deleteAllInBatch(Iterable<Seller> entities) {

            }

            @Override
            public void deleteAllByIdInBatch(Iterable<Long> longs) {

            }

            @Override
            public void deleteAllInBatch() {

            }

            @Override
            public Seller getOne(Long aLong) {
                return null;
            }

            @Override
            public Seller getById(Long aLong) {
                return null;
            }

            @Override
            public <S extends Seller> List<S> findAll(Example<S> example) {
                return null;
            }

            @Override
            public <S extends Seller> List<S> findAll(Example<S> example, Sort sort) {
                return null;
            }

            @Override
            public Page<Seller> findAll(Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Seller> S save(S entity) {
                return null;
            }

            @Override
            public Optional<Seller> findById(Long aLong) {
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
            public void delete(Seller entity) {

            }

            @Override
            public void deleteAllById(Iterable<? extends Long> longs) {

            }

            @Override
            public void deleteAll(Iterable<? extends Seller> entities) {

            }

            @Override
            public void deleteAll() {

            }

            @Override
            public <S extends Seller> Optional<S> findOne(Example<S> example) {
                return Optional.empty();
            }

            @Override
            public <S extends Seller> Page<S> findAll(Example<S> example, Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Seller> long count(Example<S> example) {
                return 0;
            }

            @Override
            public <S extends Seller> boolean exists(Example<S> example) {
                return false;
            }
        };
    }

}
