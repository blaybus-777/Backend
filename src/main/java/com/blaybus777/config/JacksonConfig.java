package com.blaybus777.config;

import com.fasterxml.jackson.core.json.JsonReadFeature;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;

@Configuration
public class JacksonConfig {

    @Bean
    public Jackson2ObjectMapperBuilderCustomizer customizer() {
        return builder -> builder.postConfigurer(mapper ->
            mapper.getFactory().enable(
                JsonReadFeature.ALLOW_UNESCAPED_CONTROL_CHARS.mappedFeature()
            )
        );
    }
}
