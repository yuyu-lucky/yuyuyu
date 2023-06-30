package com.zpy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
public class WaterDetails {
    private String workerName;
    private String workerImage;
    private String custDetails;
    private String custAddress;
    private String sendWaterCount;

    public String getWorkerName() {
        return workerName;
    }

    public void setWorkerName(String workerName) {
        this.workerName = workerName;
    }

    public String getWorkerImage() {
        return workerImage;
    }

    public void setWorkerImage(String workerImage) {
        this.workerImage = workerImage;
    }

    public String getCustDetails() {
        return custDetails;
    }

    public void setCustDetails(String custDetails) {
        this.custDetails = custDetails;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public String getSendWaterCount() {
        return sendWaterCount;
    }

    public void setSendWaterCount(String sendWaterCount) {
        this.sendWaterCount = sendWaterCount;
    }

    @Override
    public String toString() {
        return "WaterDetails{" +
                "workerName='" + workerName + '\'' +
                ", workerImage='" + workerImage + '\'' +
                ", custDetails='" + custDetails + '\'' +
                ", custAddress='" + custAddress + '\'' +
                ", sendWaterCount='" + sendWaterCount + '\'' +
                '}';
    }
}
