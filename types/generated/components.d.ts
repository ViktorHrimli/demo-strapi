import type { Schema, Attribute } from '@strapi/strapi';

export interface DddAwdawd extends Schema.Component {
  collectionName: 'components_ddd_awdawds';
  info: {
    displayName: 'awdawd';
  };
  attributes: {
    tetet: Attribute.Email;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'ddd.awdawd': DddAwdawd;
    }
  }
}
