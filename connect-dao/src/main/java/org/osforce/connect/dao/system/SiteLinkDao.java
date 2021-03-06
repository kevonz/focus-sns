package org.osforce.connect.dao.system;

import java.util.List;

import org.osforce.connect.entity.system.SiteLink;
import org.osforce.spring4me.dao.BaseDao;

/**
 * 
 * @author gavin
 * @since 1.0.0
 * @create Mar 21, 2011 - 11:11:20 AM
 *  <a href="http://www.opensourceforce.org">开源力量</a>
 */
public interface SiteLinkDao extends BaseDao<SiteLink> {

	/**
	 * Find site link list by site id
	 * @param siteId
	 * @return
	 */
	List<SiteLink> findSiteLinkList(Long siteId);

}
