package ch.zhaw.securitylab.DIBA.activity.auth;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.app.TaskStackBuilder;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;


import ch.zhaw.securitylab.DIBA.R;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

//public class ActivitySurvey extends ActivityInBankAbstract {
public class ActivitySurvey extends AppCompatActivity {

    WebView surveyView;

//    public ActivitySurvey() { super(R.layout.activity_survey, ToolbarMode.NAV_AUTH, R.id.nav_go_home); }
    public ActivitySurvey() {}


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_survey);

        surveyView = (WebView) findViewById(R.id.surveyWebView);
        WebSettings webSettings = surveyView.getSettings();
        webSettings.setJavaScriptEnabled(true);

        JavaScriptInterface jsInterface = new JavaScriptInterface(this);
        surveyView.addJavascriptInterface(jsInterface, "JSInterface");

        surveyView.setWebViewClient(new WebViewClient() {
            @Override
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                handler.proceed();
            }
        });
        surveyView.loadUrl("https://10.0.2.2:8443/survey");
    }
    
    public class JavaScriptInterface {
        private Activity activity;

        public JavaScriptInterface(Activity activity) {
            this.activity = activity;
        }

        @JavascriptInterface
        public void post_comment(String host, String comment) throws Exception {
            System.out.println("From post_comment\n Host:" + host + ", comment: " + comment);
            Request request = new Request.Builder()
                    .url(host + "?comment=" + comment)
                    .header("Host", "postb.in")
                    .build();

            OkHttpClient client = new OkHttpClient();
            Response response = client.newCall(request).execute();
            System.out.println(response.body().string());
        }
    }

    @Override
    public void onBackPressed() {
        if (surveyView.canGoBack()) {
//          surveyView.goBack();
            Intent intent = new Intent(this, ActivityAuthMain.class);
            TaskStackBuilder.create(this)
                    .addNextIntent(intent)
                    .startActivities();
        }
    }
}
