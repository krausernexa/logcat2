.class public Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;
.super Ljava/lang/Object;
.source "SharePreference.java"


# static fields
.field private static final ENGLISH_CHAT_PREFERENCE:Ljava/lang/String; = "english_chat_preference"

.field private static final IS_FIRST:Ljava/lang/String; = "is_first"

.field private static mChatPrefer:Landroid/content/SharedPreferences;

.field private static sSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "english_chat_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->mChatPrefer:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static getChatPreferenceInstance(Landroid/content/Context;)Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->sSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->sSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    .line 22
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->sSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    return-object v0
.end method


# virtual methods
.method public checkWhetherIsFirst()Z
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->mChatPrefer:Landroid/content/SharedPreferences;

    const-string v1, "is_first"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIsFirst(Z)V
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 30
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->mChatPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_first"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    return-void
.end method
