declare module '@apiverve/heicconverter' {
  export interface heicconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface heicconverterResponse {
    status: string;
    error: string | null;
    data: HEICConverterData;
    code?: number;
  }


  interface HEICConverterData {
      id:           string;
      inputFormat:  string;
      outputFormat: string;
      inputSize:    number;
      outputSize:   number;
      mimeType:     string;
      expires:      number;
      downloadURL:  string;
  }

  export default class heicconverterWrapper {
    constructor(options: heicconverterOptions);

    execute(callback: (error: any, data: heicconverterResponse | null) => void): Promise<heicconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: heicconverterResponse | null) => void): Promise<heicconverterResponse>;
    execute(query?: Record<string, any>): Promise<heicconverterResponse>;
  }
}
