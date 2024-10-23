.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;
.super Ljava/lang/Object;
.source "CredentialsHandler.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final ACCESS_TOKEN_NAME:Ljava/lang/String; = "webapi.credentials.access_token"

.field private static final EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field private static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final REFRESH_TOKEN_NAME:Ljava/lang/String; = "webapi.credentials.refresh_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRefreshToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "refresh_token"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "token":Ljava/lang/String;
    return-object v2
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "webapi.credentials.access_token"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v6, "access_token"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "token":Ljava/lang/String;
    const-string v6, "expires_at"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    .local v2, "expiresAt":J
    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 44
    .end local v4    # "token":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static setRefreshToken(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "expiresIn"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 55
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "refresh_token"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return-void
.end method

.method public static setToken(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expiresIn"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 20
    .local v4, "now":J
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long v2, v4, v8

    .line 22
    .local v2, "expiresAt":J
    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 23
    .local v6, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 24
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "access_token"

    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    const-string v7, "expires_at"

    invoke-interface {v1, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    return-void
.end method
