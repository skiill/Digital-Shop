package com.jdshop.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNull() {
            addCriterion("parent_id is null");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNotNull() {
            addCriterion("parent_id is not null");
            return (Criteria) this;
        }

        public Criteria andParentIdEqualTo(Long value) {
            addCriterion("parent_id =", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotEqualTo(Long value) {
            addCriterion("parent_id <>", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThan(Long value) {
            addCriterion("parent_id >", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThanOrEqualTo(Long value) {
            addCriterion("parent_id >=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThan(Long value) {
            addCriterion("parent_id <", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThanOrEqualTo(Long value) {
            addCriterion("parent_id <=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdIn(List<Long> values) {
            addCriterion("parent_id in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotIn(List<Long> values) {
            addCriterion("parent_id not in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdBetween(Long value1, Long value2) {
            addCriterion("parent_id between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotBetween(Long value1, Long value2) {
            addCriterion("parent_id not between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateIsNull() {
            addCriterion("is_evaluate is null");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateIsNotNull() {
            addCriterion("is_evaluate is not null");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateEqualTo(Boolean value) {
            addCriterion("is_evaluate =", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateNotEqualTo(Boolean value) {
            addCriterion("is_evaluate <>", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateGreaterThan(Boolean value) {
            addCriterion("is_evaluate >", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_evaluate >=", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateLessThan(Boolean value) {
            addCriterion("is_evaluate <", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateLessThanOrEqualTo(Boolean value) {
            addCriterion("is_evaluate <=", value, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateIn(List<Boolean> values) {
            addCriterion("is_evaluate in", values, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateNotIn(List<Boolean> values) {
            addCriterion("is_evaluate not in", values, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateBetween(Boolean value1, Boolean value2) {
            addCriterion("is_evaluate between", value1, value2, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andIsEvaluateNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_evaluate not between", value1, value2, "isEvaluate");
            return (Criteria) this;
        }

        public Criteria andPicIsNull() {
            addCriterion("pic is null");
            return (Criteria) this;
        }

        public Criteria andPicIsNotNull() {
            addCriterion("pic is not null");
            return (Criteria) this;
        }

        public Criteria andPicEqualTo(String value) {
            addCriterion("pic =", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicNotEqualTo(String value) {
            addCriterion("pic <>", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicGreaterThan(String value) {
            addCriterion("pic >", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicGreaterThanOrEqualTo(String value) {
            addCriterion("pic >=", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicLessThan(String value) {
            addCriterion("pic <", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicLessThanOrEqualTo(String value) {
            addCriterion("pic <=", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicLike(String value) {
            addCriterion("pic like", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicNotLike(String value) {
            addCriterion("pic not like", value, "pic");
            return (Criteria) this;
        }

        public Criteria andPicIn(List<String> values) {
            addCriterion("pic in", values, "pic");
            return (Criteria) this;
        }

        public Criteria andPicNotIn(List<String> values) {
            addCriterion("pic not in", values, "pic");
            return (Criteria) this;
        }

        public Criteria andPicBetween(String value1, String value2) {
            addCriterion("pic between", value1, value2, "pic");
            return (Criteria) this;
        }

        public Criteria andPicNotBetween(String value1, String value2) {
            addCriterion("pic not between", value1, value2, "pic");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Long value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Long value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Long value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Long value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Long value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Long value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Long> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Long> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Long value1, Long value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Long value1, Long value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdIsNull() {
            addCriterion("return_user_id is null");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdIsNotNull() {
            addCriterion("return_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdEqualTo(Long value) {
            addCriterion("return_user_id =", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdNotEqualTo(Long value) {
            addCriterion("return_user_id <>", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdGreaterThan(Long value) {
            addCriterion("return_user_id >", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdGreaterThanOrEqualTo(Long value) {
            addCriterion("return_user_id >=", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdLessThan(Long value) {
            addCriterion("return_user_id <", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdLessThanOrEqualTo(Long value) {
            addCriterion("return_user_id <=", value, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdIn(List<Long> values) {
            addCriterion("return_user_id in", values, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdNotIn(List<Long> values) {
            addCriterion("return_user_id not in", values, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdBetween(Long value1, Long value2) {
            addCriterion("return_user_id between", value1, value2, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andReturnUserIdNotBetween(Long value1, Long value2) {
            addCriterion("return_user_id not between", value1, value2, "returnUserId");
            return (Criteria) this;
        }

        public Criteria andShippingGradeIsNull() {
            addCriterion("shipping_grade is null");
            return (Criteria) this;
        }

        public Criteria andShippingGradeIsNotNull() {
            addCriterion("shipping_grade is not null");
            return (Criteria) this;
        }

        public Criteria andShippingGradeEqualTo(Integer value) {
            addCriterion("shipping_grade =", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeNotEqualTo(Integer value) {
            addCriterion("shipping_grade <>", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeGreaterThan(Integer value) {
            addCriterion("shipping_grade >", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeGreaterThanOrEqualTo(Integer value) {
            addCriterion("shipping_grade >=", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeLessThan(Integer value) {
            addCriterion("shipping_grade <", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeLessThanOrEqualTo(Integer value) {
            addCriterion("shipping_grade <=", value, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeIn(List<Integer> values) {
            addCriterion("shipping_grade in", values, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeNotIn(List<Integer> values) {
            addCriterion("shipping_grade not in", values, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeBetween(Integer value1, Integer value2) {
            addCriterion("shipping_grade between", value1, value2, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andShippingGradeNotBetween(Integer value1, Integer value2) {
            addCriterion("shipping_grade not between", value1, value2, "shippingGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeIsNull() {
            addCriterion("item_grade is null");
            return (Criteria) this;
        }

        public Criteria andItemGradeIsNotNull() {
            addCriterion("item_grade is not null");
            return (Criteria) this;
        }

        public Criteria andItemGradeEqualTo(Integer value) {
            addCriterion("item_grade =", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeNotEqualTo(Integer value) {
            addCriterion("item_grade <>", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeGreaterThan(Integer value) {
            addCriterion("item_grade >", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeGreaterThanOrEqualTo(Integer value) {
            addCriterion("item_grade >=", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeLessThan(Integer value) {
            addCriterion("item_grade <", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeLessThanOrEqualTo(Integer value) {
            addCriterion("item_grade <=", value, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeIn(List<Integer> values) {
            addCriterion("item_grade in", values, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeNotIn(List<Integer> values) {
            addCriterion("item_grade not in", values, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeBetween(Integer value1, Integer value2) {
            addCriterion("item_grade between", value1, value2, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andItemGradeNotBetween(Integer value1, Integer value2) {
            addCriterion("item_grade not between", value1, value2, "itemGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeIsNull() {
            addCriterion("shop_service_grade is null");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeIsNotNull() {
            addCriterion("shop_service_grade is not null");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeEqualTo(Integer value) {
            addCriterion("shop_service_grade =", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeNotEqualTo(Integer value) {
            addCriterion("shop_service_grade <>", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeGreaterThan(Integer value) {
            addCriterion("shop_service_grade >", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeGreaterThanOrEqualTo(Integer value) {
            addCriterion("shop_service_grade >=", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeLessThan(Integer value) {
            addCriterion("shop_service_grade <", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeLessThanOrEqualTo(Integer value) {
            addCriterion("shop_service_grade <=", value, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeIn(List<Integer> values) {
            addCriterion("shop_service_grade in", values, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeNotIn(List<Integer> values) {
            addCriterion("shop_service_grade not in", values, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeBetween(Integer value1, Integer value2) {
            addCriterion("shop_service_grade between", value1, value2, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andShopServiceGradeNotBetween(Integer value1, Integer value2) {
            addCriterion("shop_service_grade not between", value1, value2, "shopServiceGrade");
            return (Criteria) this;
        }

        public Criteria andItemIdIsNull() {
            addCriterion("item_id is null");
            return (Criteria) this;
        }

        public Criteria andItemIdIsNotNull() {
            addCriterion("item_id is not null");
            return (Criteria) this;
        }

        public Criteria andItemIdEqualTo(Long value) {
            addCriterion("item_id =", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotEqualTo(Long value) {
            addCriterion("item_id <>", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThan(Long value) {
            addCriterion("item_id >", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThanOrEqualTo(Long value) {
            addCriterion("item_id >=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThan(Long value) {
            addCriterion("item_id <", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThanOrEqualTo(Long value) {
            addCriterion("item_id <=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdIn(List<Long> values) {
            addCriterion("item_id in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotIn(List<Long> values) {
            addCriterion("item_id not in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdBetween(Long value1, Long value2) {
            addCriterion("item_id between", value1, value2, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotBetween(Long value1, Long value2) {
            addCriterion("item_id not between", value1, value2, "itemId");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNull() {
            addCriterion("created is null");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNotNull() {
            addCriterion("created is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedEqualTo(Date value) {
            addCriterion("created =", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotEqualTo(Date value) {
            addCriterion("created <>", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThan(Date value) {
            addCriterion("created >", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThanOrEqualTo(Date value) {
            addCriterion("created >=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThan(Date value) {
            addCriterion("created <", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThanOrEqualTo(Date value) {
            addCriterion("created <=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedIn(List<Date> values) {
            addCriterion("created in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotIn(List<Date> values) {
            addCriterion("created not in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedBetween(Date value1, Date value2) {
            addCriterion("created between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotBetween(Date value1, Date value2) {
            addCriterion("created not between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andUpdatedIsNull() {
            addCriterion("updated is null");
            return (Criteria) this;
        }

        public Criteria andUpdatedIsNotNull() {
            addCriterion("updated is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatedEqualTo(Date value) {
            addCriterion("updated =", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotEqualTo(Date value) {
            addCriterion("updated <>", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedGreaterThan(Date value) {
            addCriterion("updated >", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedGreaterThanOrEqualTo(Date value) {
            addCriterion("updated >=", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedLessThan(Date value) {
            addCriterion("updated <", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedLessThanOrEqualTo(Date value) {
            addCriterion("updated <=", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedIn(List<Date> values) {
            addCriterion("updated in", values, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotIn(List<Date> values) {
            addCriterion("updated not in", values, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedBetween(Date value1, Date value2) {
            addCriterion("updated between", value1, value2, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotBetween(Date value1, Date value2) {
            addCriterion("updated not between", value1, value2, "updated");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}