package com.yuanlrc.movie.dao.common;
/**
 * 电影信息管理数据库操作层
 */
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.yuanlrc.movie.entity.common.Movie;
@Repository
public interface MovieDao extends JpaRepository<Movie, Long> {
	
	@Query(value="select * from ylrc_movie where show_time <= :showTime and is_show = 1 order by rate desc limit 0,:size",nativeQuery=true)
	List<Movie> findList(@Param("showTime")Date showTime,@Param("size")Integer size);

	@Query(value="select * from ylrc_movie where video is not null and video <> ''  and is_show = 1 order by rate desc limit 0,:size",nativeQuery=true)
	List<Movie> findVideoList(@Param("size")Integer size);
	
	List<Movie> findTop5ByOrderByTotalMoneyDesc();
	
	@Query("select m from Movie m where m.showTime <= :showTime and is_show = 1 order by rate desc,showTime desc")
	List<Movie> findShowList(@Param("showTime")Date showTime);
	
	@Query("select m from Movie m where m.showTime > :showTime and is_show = 1 order by rate desc,showTime desc")
	List<Movie> findFutureList(@Param("showTime")Date showTime);

	@Query(value="select SUM(total_money) from ylrc_movie",nativeQuery=true)
	BigDecimal sumTotalMoney();
}
