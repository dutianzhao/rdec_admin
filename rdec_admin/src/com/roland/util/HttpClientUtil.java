package com.roland.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class HttpClientUtil
{
    public static String commentClient(String url, Map<String, String> params) throws ClientProtocolException, IOException
    {
        HttpClient hc = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(url);
        List<NameValuePair> nvps = new ArrayList<NameValuePair>();
        for (String param : params.keySet())
        {
            nvps.add(new BasicNameValuePair(param, params.get(param)));
        }
        httpPost.setEntity(new UrlEncodedFormEntity(nvps, "UTF-8"));
        HttpResponse response = hc.execute(httpPost);
        HttpEntity entity = response.getEntity();
        String result = null;
        if (entity != null)
        {
            result = EntityUtils.toString(entity);
        }
        hc.getConnectionManager().shutdown();
        return result;
    }
}
