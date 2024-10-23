.class public Lcom/ubtech/alpha2/core/utils/WebServerConstants;
.super Ljava/lang/Object;
.source "WebServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    }
.end annotation


# static fields
.field public static final ALPHA1S_APK_NAME:Ljava/lang/String; = "Alpha1Blooth.apk"

.field public static final ALPHA1S_APK_VERSION_NAME:Ljava/lang/String; = "version.xml"

.field public static final ALPHA1S_APK_VERSION_URL:Ljava/lang/String; = "http://www.ubtrobot.com/tools/alpha1robot/android/version.xml"

.field public static final ALPHA1S_BIN_FILE_NAME:Ljava/lang/String; = "alpha.bin"

.field public static final ALPHA1S_BIN_VERSION_NAME:Ljava/lang/String; = "alphabinversion.xml"

.field public static final ALPHA1S_DEVICE_VERSION_URL:Ljava/lang/String; = ""

.field public static final APKCONFIGACTION_CHECKMAXVERSION:Ljava/lang/String; = "http://192.168.213.94:8080/ssh/apkConfigAction!checkMaxVersion.action"

.field public static final APKDOWNLOADPATH:Ljava/lang/String; = "http://192.168.213.94:8080/ssh/"

.field public static final BASE_ACTION_FILE:Ljava/lang/String; = "baseaction.zip"

.field public static final BASE_ACTION_URL:Ljava/lang/String; = "http://192.168.137.1:8081/file/baseaction.zip"

.field public static final BASE_ACTION_VERSION_FILE:Ljava/lang/String; = "base_action_version.json"

.field public static final BASE_ACTION_VERSION_URL:Ljava/lang/String; = "http://192.168.137.1:8081/file/base_action_version.json"

.field public static final ENGINE_VERSION_FILE:Ljava/lang/String; = "alpha_endine_version.json"

.field public static final ENGINE_VERSION_URL:Ljava/lang/String; = "http://192.168.137.1:8081/file/alpha_endine_version.json"

.field public static final HARDWARD_VERSION_URL:Ljava/lang/String; = "http://www.ubtrobot.com/tools/alpha1robot/alphabinversion.xml"

.field public static final LOCAL_APK_PATH:Ljava/lang/String;

.field public static final SD_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ubtech/alpha2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->LOCAL_APK_PATH:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->SD_PATH:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSavePath(Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .prologue
    .line 73
    sget-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->SD_PATH:Ljava/lang/String;

    .line 74
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$1;->$SwitchMap$com$ubtech$alpha2$core$utils$WebServerConstants$Product:[I

    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ahpa1/hardversion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ahpa1/apk/version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ahpa1/bin/version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ahpa1/engine/version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ahpa1/baseaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
