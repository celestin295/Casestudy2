package com.giza.store.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.giza.store.enitity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface UserDAO extends JpaRepository<User, Integer> {

	public Optional<User> findById(@Param("id") Integer id);

	public User findByEmail(@Param("email") String email);

	@Query("select u from User u where lower(u.email) like lower(concat('%', :email,'%'))")
	public List<User> findByEmailStartsWith(@Param("email") String email);

	@Query(value = "SELECT @@global.time_zone as globaltz, @@session.time_zone as sessiontz, now() as now", nativeQuery = true)
	Map<String, Object> queryTimezone();

}
