package com.ccuk.demo.feature;

public enum FeatureFlag {

    CREATE_INSTRUCTION("create.instructions"), GET_INSTRUCTION_BY_ID("get.instruction.by.id");

    String key;

    FeatureFlag(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
