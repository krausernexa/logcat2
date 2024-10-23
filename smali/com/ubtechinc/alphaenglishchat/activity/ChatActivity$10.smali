.class synthetic Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$spotify$sdk$android$authentication$AuthenticationResponse$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 740
    invoke-static {}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->values()[Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$10;->$SwitchMap$com$spotify$sdk$android$authentication$AuthenticationResponse$Type:[I

    :try_start_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$10;->$SwitchMap$com$spotify$sdk$android$authentication$AuthenticationResponse$Type:[I

    sget-object v1, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->TOKEN:Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    invoke-virtual {v1}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$10;->$SwitchMap$com$spotify$sdk$android$authentication$AuthenticationResponse$Type:[I

    sget-object v1, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->ERROR:Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    invoke-virtual {v1}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
