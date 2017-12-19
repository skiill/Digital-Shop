package com.jdshop.pojo.vo;

public class AddressView {
   /* {province=湖北省,city=武汉市,dist=洪山区, street=雄楚大道666号(中南财经政法大学),status=0},
    {province=湖北省,city=武汉市,dist=洪山区, street=雄楚大道677号(中南财经政法大学),status=1},
    {province=湖北省,city=武汉市,dist=洪山区, street=雄楚大道688号(中南财经政法大学),status=1}*/
   private Long aid;
   private String province;//省
   private String city;//市
   private String dist;//区
   private String street;//街
   private String status;//状态

    public AddressView() {
    }

    public Long getAid() {
        return aid;
    }

    public void setAid(Long aid) {
        this.aid = aid;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDist() {
        return dist;
    }

    public void setDist(String dist) {
        this.dist = dist;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "{" +
                "aid=" + aid +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", dist='" + dist + '\'' +
                ", street='" + street + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
