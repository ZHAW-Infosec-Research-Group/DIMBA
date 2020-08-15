//
// Created by gregory on 5/10/20.
//

#include <string.h>
#include <jni.h>

/* This is a trivial JNI example where we use a native method
 * to return a new VM String. See the corresponding Java source
 * file located at:
 *
 *   apps/samples/hello-jni/project/src/com/example/hellojni/HelloJni.java
 */


JNIEXPORT jstring JNICALL
Java_ch_zhaw_securitylab_DIBA_DIBA_loadsecret(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "n4t1v3sArEnT1nv1s1bl3");
}