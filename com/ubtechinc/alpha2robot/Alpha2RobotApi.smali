.class public Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.super Ljava/lang/Object;
.source "Alpha2RobotApi.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortHeaderOnRcvListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;,
        Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;,
        Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishUnderstand;,
        Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;,
        Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;
    }
.end annotation


# static fields
.field private static CUSTOM_CMD:I = 0x0

.field private static CUSTOM_RESP:I = 0x0

.field private static HAVE_NUANCE_OFFLINE_AUTHORITY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Alpha2RobotApi"

.field private static sAlpha2HardwareVertion:I

.field private static sdkVersion:Ljava/lang/String;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private isAuthorize:Z

.field private isNuanceOfflineAuthorize:Z

.field private mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

.field private mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

.field private mAngleOffset:I

.field private mAnglerTimeout:S

.field private mAppID:Ljava/lang/String;

.field private mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

.field private mContext:Landroid/content/Context;

.field private mEnglishOfflineListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;

.field private mEnglishUnderstandListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;

.field private mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

.field private mRobotClient:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;

.field private mRobotTextListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

.field private mSpeechGrammarInitListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

.field private mSpeechGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

.field private mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

.field private mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const-string v0, "2.0.0.2"

    sput-object v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sdkVersion:Ljava/lang/String;

    .line 77
    const-string v0, "nuance_offline_authority"

    sput-object v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->HAVE_NUANCE_OFFLINE_AUTHORITY:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->CUSTOM_CMD:I

    .line 80
    sput v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->CUSTOM_RESP:I

    .line 146
    sput v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 141
    iput-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    .line 143
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 144
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->editor:Landroid/content/SharedPreferences$Editor;

    .line 178
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "listenr"    # Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 141
    iput-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    .line 143
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 144
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->editor:Landroid/content/SharedPreferences$Editor;

    .line 196
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initSharedPreference()V

    .line 199
    invoke-direct {p0, p3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->doProcess(Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    .line 200
    invoke-direct {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->getRobotHardwareVersion()V

    .line 201
    return-void
.end method

.method static synthetic access$1002(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->HAVE_NUANCE_OFFLINE_AUTHORITY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechGrammarInitListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mRobotClient:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mRobotTextListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mEnglishUnderstandListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mEnglishOfflineListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    return-object v0
.end method

.method private checkAuthorize(Ljava/lang/Object;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 3
    .param p1, "util"    # Ljava/lang/Object;
    .param p2, "appID"    # Ljava/lang/String;

    .prologue
    .line 2072
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 2073
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    .line 2074
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 2087
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 2076
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    if-nez p1, :cond_1

    .line 2077
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 2078
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 2081
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2082
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2083
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    move-object v1, v0

    .line 2087
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method private doProcess(Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1106
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ubtech.iflytekmix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 1107
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ubtechinc.alphaenglishchat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 1108
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ubtech.smartcamera"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 1109
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ubtechinc.alpha2factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 1110
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ubtech.rioapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1111
    :cond_0
    iput-boolean v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 1112
    iput-boolean v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    .line 1113
    const-string v5, "This is robot system app and have offline authority"

    invoke-interface {p1, v9, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 1168
    :goto_0
    return-void

    .line 1117
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    .line 1118
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1117
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1119
    .local v3, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1120
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 1121
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    .line 1122
    const/4 v5, 0x2

    const-string v6, "This is robot system app and have offline authority"

    invoke-interface {p1, v5, v6}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1127
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1130
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "appID":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1133
    iput-boolean v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 1134
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->HAVE_NUANCE_OFFLINE_AUTHORITY:Ljava/lang/String;

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1136
    const-string v5, "have offline authority"

    invoke-interface {p1, v9, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_3
    const-string v5, "appID already exit"

    invoke-interface {p1, v8, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_4
    new-instance v4, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;

    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;

    invoke-direct {v6, p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$2;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    invoke-direct {v4, v5, v6}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    .line 1162
    .local v4, "xx":Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;
    new-instance v1, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;

    invoke-direct {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;-><init>()V

    .line 1163
    .local v1, "bean":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->setAppKey(Ljava/lang/String;)V

    .line 1164
    iget-object v5, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->setAppPackage(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v4, v1}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->setParamerObj(Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;)V

    .line 1166
    const/16 v5, 0x2711

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->doRequest(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRobotHardwareVersion()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2091
    const-string v1, "ro.hardware.version"

    invoke-static {v1}, Lcom/ubtechinc/mic5/SystemProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alpha2_10005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    const/4 v1, 0x1

    sput v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    .line 2099
    :goto_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sAlpha2HardwareVertion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    return-void

    .line 2094
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "alpha2_10002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2095
    sput v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    goto :goto_0

    .line 2097
    :cond_1
    sput v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getServerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/ubtechinc/alpha2serverlib/util/AlphaMainServiceUtil;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSharedPreference()V
    .locals 3

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    const-string v1, "ALPHA_APP_VALIDATE"

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 1707
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1708
    return-void
.end method

.method private isAuthorize()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    return v0
.end method

.method private isNuanceOfflineAuthorize()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    return v0
.end method

.method private readAppFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-string v1, "config.json"

    .line 1179
    .local v1, "configName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .local v13, "returnString":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1181
    .local v4, "fIn":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1182
    .local v9, "isr":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 1184
    .local v7, "input":Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    .line 1185
    .local v12, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/files/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v6, "file_file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_3

    .line 1187
    const/4 v14, 0x0

    .line 1200
    if-eqz v9, :cond_0

    .line 1201
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 1202
    :cond_0
    if-eqz v4, :cond_1

    .line 1203
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1204
    :cond_1
    if-eqz v7, :cond_2

    .line 1205
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1210
    .end local v6    # "file_file":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v14

    .line 1206
    .restart local v6    # "file_file":Ljava/io/File;
    .restart local v12    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1207
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 1189
    .end local v3    # "e2":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    .end local v4    # "fIn":Ljava/io/InputStream;
    .local v5, "fIn":Ljava/io/InputStream;
    :try_start_3
    new-instance v10, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v10, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1191
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v10, "isr":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1193
    .end local v7    # "input":Ljava/io/BufferedReader;
    .local v8, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 1194
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 1196
    .end local v11    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1197
    .end local v5    # "fIn":Ljava/io/InputStream;
    .end local v6    # "file_file":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1200
    if-eqz v9, :cond_4

    .line 1201
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 1202
    :cond_4
    if-eqz v4, :cond_5

    .line 1203
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1204
    :cond_5
    if-eqz v7, :cond_6

    .line 1205
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1210
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1200
    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v7    # "input":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v6    # "file_file":Ljava/io/File;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v10, :cond_8

    .line 1201
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 1202
    :cond_8
    if-eqz v5, :cond_9

    .line 1203
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1204
    :cond_9
    if-eqz v8, :cond_a

    .line 1205
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_a
    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1208
    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_3

    .line 1206
    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v7    # "input":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    .line 1207
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1209
    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_3

    .line 1206
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v6    # "file_file":Ljava/io/File;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1207
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3

    .line 1199
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 1200
    :goto_4
    if-eqz v9, :cond_b

    .line 1201
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 1202
    :cond_b
    if-eqz v4, :cond_c

    .line 1203
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1204
    :cond_c
    if-eqz v7, :cond_d

    .line 1205
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1208
    :cond_d
    :goto_5
    throw v14

    .line 1206
    :catch_4
    move-exception v3

    .line 1207
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_5

    .line 1199
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v4    # "fIn":Ljava/io/InputStream;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v6    # "file_file":Ljava/io/File;
    .restart local v12    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_4

    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_4

    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v7    # "input":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v14

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_4

    .line 1196
    .end local v6    # "file_file":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    :catch_5
    move-exception v2

    goto :goto_2

    .end local v4    # "fIn":Ljava/io/InputStream;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v6    # "file_file":Ljava/io/File;
    .restart local v12    # "path":Ljava/lang/String;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/InputStream;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v2

    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/InputStream;
    .restart local v4    # "fIn":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private readAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string v0, "config.json"

    .line 1218
    .local v0, "configName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v9, "returnString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1220
    .local v3, "fIn":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1221
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 1223
    .local v4, "input":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v10, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1224
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1227
    .end local v4    # "input":Ljava/io/BufferedReader;
    .local v5, "input":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1228
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1230
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 1231
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1232
    const/4 v10, 0x0

    .line 1235
    if-eqz v6, :cond_0

    .line 1236
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1237
    :cond_0
    if-eqz v3, :cond_1

    .line 1238
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1239
    :cond_1
    if-eqz v4, :cond_2

    .line 1240
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1245
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v10

    .line 1235
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 1236
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 1237
    :cond_4
    if-eqz v3, :cond_5

    .line 1238
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1239
    :cond_5
    if-eqz v5, :cond_6

    .line 1240
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1245
    :cond_6
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 1241
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 1242
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3

    .line 1241
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 1242
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 1234
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1235
    :goto_4
    if-eqz v6, :cond_7

    .line 1236
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1237
    :cond_7
    if-eqz v3, :cond_8

    .line 1238
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1239
    :cond_8
    if-eqz v4, :cond_9

    .line 1240
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1243
    :cond_9
    :goto_5
    throw v10

    .line 1241
    :catch_3
    move-exception v2

    .line 1242
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_5

    .line 1234
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1230
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private removeMessyCode([B)[B
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1341
    const/4 v0, 0x0

    .line 1342
    .local v0, "byss":[B
    array-length v2, p1

    .line 1343
    .local v2, "length":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1344
    .local v1, "info":Ljava/lang/String;
    const-string v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1345
    .local v3, "start":I
    if-lez v3, :cond_0

    .line 1346
    sub-int v4, v2, v3

    new-array v0, v4, [B

    .line 1347
    sub-int v4, v2, v3

    invoke-static {p1, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    :goto_0
    return-object v0

    .line 1349
    :cond_0
    new-array v0, v2, [B

    .line 1350
    invoke-static {p1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private sendFreeAngle([IS)V
    .locals 6
    .param p1, "data"    # [I
    .param p2, "time"    # S

    .prologue
    .line 1486
    new-instance v1, Lcom/ubtechinc/developer/DeveloperPacketData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;-><init>(I)V

    .line 1487
    .local v1, "packetData":Lcom/ubtechinc/developer/DeveloperPacketData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1488
    aget v2, p1, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;->putByte(B)V

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    const/16 v2, 0x14

    if-ge p2, v2, :cond_1

    .line 1491
    const/16 p2, 0x14

    .line 1493
    :cond_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;->putShort_(Ljava/lang/Short;)V

    .line 1494
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    const/16 v3, 0x34

    .line 1495
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->getBuffer()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->getBuffer()[B

    move-result-object v5

    array-length v5, v5

    .line 1494
    invoke-virtual {v2, v3, v4, v5}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->sendCommand(B[BI)Z

    .line 1497
    return-void
.end method

.method private setAuthorize(Z)V
    .locals 0
    .param p1, "isAuthorize"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    .line 162
    return-void
.end method

.method private setNuanceOfflineAuthorize(Z)V
    .locals 0
    .param p1, "isNuanceOfflineAuthorize"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isNuanceOfflineAuthorize:Z

    .line 170
    return-void
.end method

.method private setOneFreeAngle(BIS)V
    .locals 6
    .param p1, "id"    # B
    .param p2, "angle"    # I
    .param p3, "time"    # S

    .prologue
    .line 1578
    new-instance v1, Lcom/ubtechinc/developer/DeveloperPacketData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;-><init>(I)V

    .line 1579
    .local v1, "packetData":Lcom/ubtechinc/developer/DeveloperPacketData;
    invoke-virtual {v1, p1}, Lcom/ubtechinc/developer/DeveloperPacketData;->putByte(B)V

    .line 1580
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1581
    .local v0, "angleHight":B
    invoke-virtual {v1, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->putByte(B)V

    .line 1582
    and-int/lit16 v2, p2, 0xff

    int-to-byte v0, v2

    .line 1583
    invoke-virtual {v1, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->putByte(B)V

    .line 1584
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;->putShort_(Ljava/lang/Short;)V

    .line 1585
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    const/4 v3, 0x5

    .line 1586
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->getBuffer()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->getBuffer()[B

    move-result-object v5

    array-length v5, v5

    .line 1585
    invoke-virtual {v2, v3, v4, v5}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->sendCommand(B[BI)Z

    .line 1587
    return-void
.end method

.method private startEarLED(IIIIIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "bright"    # I
    .param p3, "rightEar"    # I
    .param p4, "leftEar"    # I
    .param p5, "upTime"    # I
    .param p6, "downTime"    # I
    .param p7, "runTime"    # I
    .param p8, "mode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1810
    sget v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    if-ne v2, v5, :cond_0

    .line 1811
    const-string v2, "Alpha2RobotApi"

    const-string v3, "open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->open()Z

    .line 1813
    const-string v2, "Alpha2RobotApi"

    const-string v3, "ledSetHead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-static/range {p1 .. p8}, Lcom/ubtechinc/mic5/LedControl;->ledSetHead(IIIIIIII)Z

    .line 1815
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->close()Z

    .line 1829
    :goto_0
    return-void

    .line 1817
    :cond_0
    const-string v2, "Alpha2RobotApi"

    const-string v3, "startEarLED 2mic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    new-instance v1, Lcom/ubtechinc/developer/DeveloperEarLedData;

    invoke-direct {v1}, Lcom/ubtechinc/developer/DeveloperEarLedData;-><init>()V

    .line 1819
    .local v1, "earLedData":Lcom/ubtechinc/developer/DeveloperEarLedData;
    invoke-virtual {v1, v4}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmLeftLed(I)V

    .line 1820
    invoke-virtual {v1, v4}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmRightLed(I)V

    .line 1821
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmBright(I)V

    .line 1822
    int-to-short v2, p5

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmLedUpTime(I)V

    .line 1823
    int-to-short v2, p6

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmLedDownTime(I)V

    .line 1824
    int-to-short v2, p7

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEarLedData;->setmRunTime(I)V

    .line 1825
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperEarLedData;->getPlayData()[B

    move-result-object v0

    .line 1826
    .local v0, "RawData":[B
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    array-length v3, v0

    invoke-virtual {v2, v5, v0, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    goto :goto_0
.end method

.method private startEyeLED(IIIISSS)V
    .locals 5
    .param p1, "colorType"    # I
    .param p2, "bright"    # I
    .param p3, "rightEye"    # I
    .param p4, "leftEye"    # I
    .param p5, "upTime"    # S
    .param p6, "downTime"    # S
    .param p7, "runTime"    # S

    .prologue
    const/4 v4, -0x1

    .line 1930
    sget v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1931
    const-string v2, "Alpha2RobotApi"

    const-string v3, "open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->open()Z

    .line 1933
    const-string v2, "Alpha2RobotApi"

    const-string v3, "ledSetEye"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-static/range {p1 .. p7}, Lcom/ubtechinc/mic5/LedControl;->ledSetEye(IIIIIII)Z

    .line 1935
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->close()Z

    .line 1950
    :goto_0
    return-void

    .line 1937
    :cond_0
    const-string v2, "Alpha2RobotApi"

    const-string v3, "startEyeLED 2mic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    new-instance v1, Lcom/ubtechinc/developer/DeveloperEyesLedData;

    invoke-direct {v1}, Lcom/ubtechinc/developer/DeveloperEyesLedData;-><init>()V

    .line 1939
    .local v1, "eyesLedData":Lcom/ubtechinc/developer/DeveloperEyesLedData;
    invoke-virtual {v1, v4}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setmLeftLed(B)V

    .line 1940
    invoke-virtual {v1, v4}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setmRightLed(B)V

    .line 1941
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setmBright(B)V

    .line 1942
    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setmColor(B)V

    .line 1943
    invoke-virtual {v1, p5}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setnLightUpTime(I)V

    .line 1944
    invoke-virtual {v1, p6}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setnLightDownTime(I)V

    .line 1945
    invoke-virtual {v1, p7}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->setmRunTime(I)V

    .line 1946
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperEyesLedData;->getPlayData()[B

    move-result-object v0

    .line 1947
    .local v0, "RawData":[B
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    const/4 v3, 0x2

    array-length v4, v0

    invoke-virtual {v2, v3, v0, v4}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    goto :goto_0
.end method

.method private stopEarLED()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1852
    sget v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    if-ne v0, v1, :cond_0

    .line 1853
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->open()Z

    .line 1854
    const/4 v0, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/ubtechinc/mic5/LedControl;->ledSetHead(IIIIIIII)Z

    .line 1855
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->close()Z

    .line 1862
    :goto_0
    return-void

    .line 1857
    :cond_0
    new-array v8, v1, [B

    .line 1858
    .local v8, "param":[B
    aput-byte v1, v8, v2

    .line 1859
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    const/16 v1, 0x8

    array-length v2, v8

    invoke-virtual {v0, v1, v8, v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    goto :goto_0
.end method

.method private stopEyeLED()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1973
    sget v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sAlpha2HardwareVertion:I

    if-ne v1, v3, :cond_0

    .line 1974
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->open()Z

    .line 1975
    invoke-static {v2}, Lcom/ubtechinc/mic5/LedControl;->ledSetOFF(I)Z

    .line 1976
    invoke-static {}, Lcom/ubtechinc/mic5/LedControl;->close()Z

    .line 1983
    :goto_0
    return-void

    .line 1978
    :cond_0
    new-array v0, v3, [B

    .line 1979
    .local v0, "param":[B
    aput-byte v2, v0, v2

    .line 1980
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    const/16 v2, 0x8

    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    goto :goto_0
.end method


# virtual methods
.method public action_PlayActionName(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 450
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 451
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 472
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 455
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    if-nez v2, :cond_1

    .line 456
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 458
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 462
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 467
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 470
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->playActionName(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)Z

    move-object v1, v0

    .line 472
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public action_StopAction()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 484
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 485
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 503
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 488
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    if-nez v2, :cond_1

    .line 489
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 491
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 493
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 497
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 498
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 502
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->stopActionPlay()V

    move-object v1, v0

    .line 503
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public action_getActionList(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

    .prologue
    .line 416
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 417
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 438
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 421
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    if-nez v2, :cond_1

    .line 422
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 424
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 428
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 436
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->getActionList(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;)V

    move-object v1, v0

    .line 438
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public chest_MoveFreeAngle(BIS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 6
    .param p1, "id"    # B
    .param p2, "offset"    # I
    .param p3, "time"    # S

    .prologue
    const/4 v4, 0x1

    .line 1687
    if-lt p1, v4, :cond_0

    const/16 v2, 0x14

    if-le p1, v2, :cond_2

    .line 1688
    :cond_0
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_PARAMETER:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1701
    :cond_1
    :goto_0
    return-object v0

    .line 1691
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->checkAuthorize(Ljava/lang/Object;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 1692
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    sget-object v2, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    if-ne v0, v2, :cond_1

    .line 1693
    iget v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAngleOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAngleOffset:I

    .line 1694
    iput-short p3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAnglerTimeout:S

    .line 1695
    new-instance v1, Lcom/ubtechinc/tools/PacketData;

    invoke-direct {v1, v4}, Lcom/ubtechinc/tools/PacketData;-><init>(I)V

    .line 1696
    .local v1, "packetData":Lcom/ubtechinc/tools/PacketData;
    invoke-virtual {v1, p1}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 1698
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    const/4 v3, 0x6

    .line 1699
    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v5

    array-length v5, v5

    .line 1698
    invoke-virtual {v2, v3, v4, v5}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->sendCommand(B[BI)Z

    goto :goto_0
.end method

.method public chest_SendFreeAngle([IS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "data"    # [I
    .param p2, "time"    # S

    .prologue
    .line 1552
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1553
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAngle;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAngle;-><init>()V

    .line 1554
    .local v0, "angle":Lcom/ubtechinc/developer/DeveloperAngle;
    invoke-virtual {v0, p1}, Lcom/ubtechinc/developer/DeveloperAngle;->checkData([I)V

    .line 1555
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1573
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v2, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v2

    .line 1558
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v3, :cond_1

    .line 1559
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .line 1561
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1563
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1567
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1568
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1572
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sendFreeAngle([IS)V

    move-object v2, v1

    .line 1573
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public chest_SendOneFreeAngle(BIS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "id"    # B
    .param p2, "angle"    # I
    .param p3, "time"    # S

    .prologue
    .line 1651
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1652
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAngle;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAngle;-><init>()V

    .line 1653
    .local v0, "mAngle":Lcom/ubtechinc/developer/DeveloperAngle;
    invoke-virtual {v0, p1, p2}, Lcom/ubtechinc/developer/DeveloperAngle;->checkAngle(BI)I

    move-result p2

    .line 1654
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1675
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v2, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v2

    .line 1657
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v3, :cond_1

    .line 1658
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .line 1660
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1662
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1666
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1667
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1670
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    const/4 v3, 0x1

    if-lt p1, v3, :cond_3

    const/16 v3, 0x14

    if-le p1, v3, :cond_4

    :cond_3
    :goto_1
    move-object v2, v1

    .line 1675
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1673
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->setOneFreeAngle(BIS)V

    goto :goto_1
.end method

.method public head_SendFreeAngle([IS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "data"    # [I
    .param p2, "time"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1514
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1515
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAngle;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAngle;-><init>()V

    .line 1516
    .local v0, "angle":Lcom/ubtechinc/developer/DeveloperAngle;
    invoke-virtual {v0, p1}, Lcom/ubtechinc/developer/DeveloperAngle;->checkData([I)V

    .line 1517
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1535
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v2, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v2

    .line 1520
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v3, :cond_1

    .line 1521
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .line 1523
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1525
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1529
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1530
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1534
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sendFreeAngle([IS)V

    move-object v2, v1

    .line 1535
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public head_SendOneFreeAngle(BIS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "id"    # B
    .param p2, "angle"    # I
    .param p3, "time"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1605
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1606
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAngle;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAngle;-><init>()V

    .line 1607
    .local v0, "mAngle":Lcom/ubtechinc/developer/DeveloperAngle;
    invoke-virtual {v0, p1, p2}, Lcom/ubtechinc/developer/DeveloperAngle;->checkAngle(BI)I

    move-result p2

    .line 1608
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1632
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v2, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v2

    .line 1611
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v3, :cond_1

    .line 1612
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .line 1614
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1616
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1620
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1621
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1624
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    const/4 v3, 0x1

    if-lt p1, v3, :cond_3

    const/16 v3, 0x14

    if-le p1, v3, :cond_4

    :cond_3
    :goto_1
    move-object v2, v1

    .line 1632
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1627
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_4
    if-gez p3, :cond_5

    .line 1628
    const/16 p3, 0x14

    .line 1630
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->setOneFreeAngle(BIS)V

    goto :goto_1
.end method

.method public header_setNoise(Z)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 8
    .param p1, "isOpen"    # Z

    .prologue
    const/16 v7, 0x27

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 301
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v1, v0

    .line 330
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 304
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    if-nez v3, :cond_1

    .line 305
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 306
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 310
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 314
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 317
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    if-nez p1, :cond_3

    .line 319
    new-array v2, v6, [B

    aput-byte v6, v2, v5

    .line 320
    .local v2, "noiseData":[B
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    array-length v4, v2

    invoke-virtual {v3, v7, v2, v4}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    :goto_1
    move-object v1, v0

    .line 330
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 325
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .end local v2    # "noiseData":[B
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_3
    new-array v2, v6, [B

    aput-byte v5, v2, v5

    .line 326
    .restart local v2    # "noiseData":[B
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    array-length v4, v2

    invoke-virtual {v3, v7, v2, v4}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->sendCommand(B[BI)Z

    goto :goto_1
.end method

.method public header_startEarLED(IIIIIIII)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "color"    # I
    .param p2, "bright"    # I
    .param p3, "rightEar"    # I
    .param p4, "leftEar"    # I
    .param p5, "upTime"    # I
    .param p6, "downTime"    # I
    .param p7, "runTime"    # I
    .param p8, "mode"    # I

    .prologue
    .line 1796
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1797
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 1798
    .local v0, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    const-string v2, "Alpha2RobotApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    if-eq v0, v1, :cond_0

    .line 1803
    .end local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v0

    .line 1802
    .restart local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->startEarLED(IIIIIIII)V

    move-object v0, v1

    .line 1803
    goto :goto_0
.end method

.method public header_startEarLED(SSS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 11
    .param p1, "upTime"    # S
    .param p2, "downTime"    # S
    .param p3, "runTime"    # S

    .prologue
    const/16 v3, 0xff

    .line 1757
    sget-object v10, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1758
    .local v10, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v9

    .line 1759
    .local v9, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    if-eq v9, v10, :cond_0

    .line 1763
    .end local v9    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v9

    .line 1762
    .restart local v9    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->startEarLED(IIIIIIII)V

    move-object v9, v10

    .line 1763
    goto :goto_0
.end method

.method public header_startEyeLED(IIIISSS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "colorType"    # I
    .param p2, "bright"    # I
    .param p3, "rightEye"    # I
    .param p4, "leftEye"    # I
    .param p5, "upTime"    # S
    .param p6, "downTime"    # S
    .param p7, "runTime"    # S

    .prologue
    .line 1916
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1917
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 1918
    .local v0, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    const-string v2, "Alpha2RobotApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    if-eq v0, v1, :cond_0

    .line 1923
    .end local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v0

    .line 1922
    .restart local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->startEyeLED(IIIISSS)V

    move-object v0, v1

    .line 1923
    goto :goto_0
.end method

.method public header_startEyeLED(ISSS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 10
    .param p1, "colorType"    # I
    .param p2, "upTime"    # S
    .param p3, "downTime"    # S
    .param p4, "runTime"    # S

    .prologue
    const/4 v2, 0x0

    .line 1880
    sget-object v9, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1881
    .local v9, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v8

    .line 1882
    .local v8, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    const-string v0, "Alpha2RobotApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    if-eq v8, v9, :cond_0

    .line 1887
    .end local v8    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v8

    .restart local v8    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, p4

    .line 1886
    invoke-direct/range {v0 .. v7}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->startEyeLED(IIIISSS)V

    move-object v8, v9

    .line 1887
    goto :goto_0
.end method

.method public header_stopEarLED()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 2

    .prologue
    .line 1841
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1842
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 1843
    .local v0, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    if-eq v0, v1, :cond_0

    .line 1847
    .end local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v0

    .line 1846
    .restart local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    invoke-direct {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->stopEarLED()V

    move-object v0, v1

    .line 1847
    goto :goto_0
.end method

.method public header_stopEyeLED()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 2

    .prologue
    .line 1962
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1963
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 1964
    .local v0, "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    if-eq v0, v1, :cond_0

    .line 1968
    .end local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v0

    .line 1967
    .restart local v0    # "available":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    invoke-direct {p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->stopEyeLED()V

    move-object v0, v1

    .line 1968
    goto :goto_0
.end method

.method public initActionApi(Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    .prologue
    .line 243
    const/4 v0, 0x1

    .line 244
    .local v0, "bRet":Z
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    .line 248
    new-instance v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V

    .line 249
    .local v1, "client":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    if-nez v2, :cond_0

    .line 250
    const-string v2, ""

    const-string v3, "!!!! mActionServiceUtil == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)V

    iput-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    goto :goto_0
.end method

.method public initChestSeiralApi()Z
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    .line 271
    :cond_0
    return v0
.end method

.method public initCustomMessageApi(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    .prologue
    .line 2011
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v0, :cond_0

    .line 2012
    const/4 v0, 0x0

    .line 2020
    :goto_0
    return v0

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    if-nez v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;)Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    .line 2020
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initHeaderSerialApi()Z
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x1

    .line 284
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortHeaderOnRcvListener;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    .line 288
    :cond_0
    return v0
.end method

.method public initSpeechApi(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;)Z
    .locals 1
    .param p1, "mRobotClient"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;
    .param p2, "mSpeechInitListener"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .prologue
    .line 348
    sget-object v0, Lcom/ubtechinc/contant/CustomLanguage;->DEFAULT_LANGUAGE:Lcom/ubtechinc/contant/CustomLanguage;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initSpeechApi(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;Lcom/ubtechinc/contant/CustomLanguage;)Z

    move-result v0

    return v0
.end method

.method public initSpeechApi(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;Lcom/ubtechinc/contant/CustomLanguage;)Z
    .locals 4
    .param p1, "mRobotClient"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;
    .param p2, "mSpeechInitListener"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;
    .param p3, "specifyLanguage"    # Lcom/ubtechinc/contant/CustomLanguage;

    .prologue
    .line 370
    const/4 v0, 0x1

    .line 371
    .local v0, "bRet":Z
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_0

    .line 375
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mRobotClient:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;

    .line 376
    new-instance v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V

    .line 377
    .local v1, "mClientListener":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;
    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;Lcom/ubtechinc/contant/CustomLanguage;)V

    iput-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    goto :goto_0
.end method

.method public isChestAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 1464
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1465
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    .line 1466
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 1481
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 1468
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-nez v2, :cond_1

    .line 1469
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 1470
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1474
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1477
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1478
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    move-object v1, v0

    .line 1481
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public isHeaderAvailable()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 1720
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1721
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    .line 1722
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 1737
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 1724
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    if-nez v2, :cond_1

    .line 1725
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 1726
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 1730
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1733
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1734
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    move-object v1, v0

    .line 1737
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1094
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListenSerialPortHeaderRcvData([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1005
    return-void
.end method

.method public onListenSerialPortRcvData([BI)V
    .locals 13
    .param p1, "bytes"    # [B
    .param p2, "len"    # I

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 968
    if-nez p1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    aget-byte v4, p1, v10

    .line 972
    .local v4, "nCmd":B
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 974
    :pswitch_0
    new-array v1, v7, [B

    .line 975
    .local v1, "angleData":[B
    aget-byte v6, p1, v9

    if-eq v6, v9, :cond_0

    .line 978
    invoke-static {p1, v9, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 979
    aget-byte v6, v1, v9

    if-eq v6, v11, :cond_2

    aget-byte v6, v1, v9

    if-ne v6, v12, :cond_0

    .line 982
    :cond_2
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v3, v6, 0xff

    .line 983
    .local v3, "angleValue":I
    const-string v6, "RIO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!! angleData[3]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/16 v2, 0x13

    .line 986
    .local v2, "angleID":B
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAngle;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAngle;-><init>()V

    .line 987
    .local v0, "angle":Lcom/ubtechinc/developer/DeveloperAngle;
    aget-byte v6, v1, v9

    if-ne v6, v11, :cond_4

    .line 988
    const/16 v2, 0x13

    .line 992
    :cond_3
    :goto_1
    iget v6, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAngleOffset:I

    add-int v5, v6, v3

    .line 993
    .local v5, "offset":I
    const-string v6, "RIO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!! setangler="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    add-int/lit8 v6, v2, -0x1

    int-to-byte v6, v6

    invoke-virtual {v0, v6, v5}, Lcom/ubtechinc/developer/DeveloperAngle;->checkAngle(BI)I

    move-result v3

    .line 995
    iget-short v6, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAnglerTimeout:S

    invoke-direct {p0, v2, v3, v6}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->setOneFreeAngle(BIS)V

    .line 996
    iput v10, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAngleOffset:I

    goto :goto_0

    .line 989
    .end local v5    # "offset":I
    :cond_4
    aget-byte v6, v1, v9

    if-ne v6, v12, :cond_3

    .line 990
    const/16 v2, 0x14

    goto :goto_1

    .line 972
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public parseClickEvent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1445
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1446
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "appclick"

    .line 1447
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/developer/DeveloperAppData;

    .line 1448
    .local v0, "appData":Lcom/ubtechinc/developer/DeveloperAppData;
    invoke-virtual {v0}, Lcom/ubtechinc/developer/DeveloperAppData;->getDatas()[B

    move-result-object v2

    .line 1449
    .local v2, "data":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 1450
    .local v3, "index":Ljava/lang/String;
    const-string v4, "appdata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appclick= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-object v3
.end method

.method public readButtonEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1364
    const-string v0, "button.json"

    .line 1365
    .local v0, "configName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .local v9, "returnString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1367
    .local v3, "fIn":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1368
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 1370
    .local v4, "input":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v10, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1371
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1374
    .end local v4    # "input":Ljava/io/BufferedReader;
    .local v5, "input":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1375
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1377
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 1378
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1379
    const/4 v10, 0x0

    .line 1382
    if-eqz v6, :cond_0

    .line 1383
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1384
    :cond_0
    if-eqz v3, :cond_1

    .line 1385
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1386
    :cond_1
    if-eqz v4, :cond_2

    .line 1387
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1392
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v10

    .line 1382
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 1383
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 1384
    :cond_4
    if-eqz v3, :cond_5

    .line 1385
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1386
    :cond_5
    if-eqz v5, :cond_6

    .line 1387
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1392
    :cond_6
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 1388
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 1389
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3

    .line 1388
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 1389
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 1381
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1382
    :goto_4
    if-eqz v6, :cond_7

    .line 1383
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 1384
    :cond_7
    if-eqz v3, :cond_8

    .line 1385
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1386
    :cond_8
    if-eqz v4, :cond_9

    .line 1387
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1390
    :cond_9
    :goto_5
    throw v10

    .line 1388
    :catch_3
    move-exception v2

    .line 1389
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_5

    .line 1381
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1377
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public readConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1257
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 1258
    .local v0, "config":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readAppFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "configData":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1260
    const-string v1, ""

    .line 1263
    :cond_0
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "configTag":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1265
    const-string v2, ""

    .line 1267
    :cond_1
    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1268
    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1269
    return-object v0
.end method

.method public releaseApi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->ReleaseConnection()Z

    .line 213
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mActionServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->ReleaseConnection()Z

    .line 217
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->ReleaseConnection()Z

    .line 221
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mChestSerialServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;->ReleaseConnection()Z

    .line 225
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mHeaderSerivalServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialHeaderServiceUtil;

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->ReleaseConnection()Z

    .line 229
    iput-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    .line 231
    :cond_4
    return-void
.end method

.method public requestRobotUUID()V
    .locals 2

    .prologue
    .line 1996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.robot_uuid.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1997
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1998
    return-void
.end method

.method public sendButtonEvent2Server(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 1410
    if-eqz p1, :cond_0

    .line 1411
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1412
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "appdata"

    .line 1413
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/developer/DeveloperAppData;

    .line 1414
    .local v0, "appData":Lcom/ubtechinc/developer/DeveloperAppData;
    invoke-virtual {v0}, Lcom/ubtechinc/developer/DeveloperAppData;->getDatas()[B

    move-result-object v4

    .line 1415
    .local v4, "data":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 1416
    .local v7, "lauange":Ljava/lang/String;
    const-string v8, "appdata"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lauange= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    .end local v0    # "appData":Lcom/ubtechinc/developer/DeveloperAppData;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "data":[B
    .end local v7    # "lauange":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readButtonEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1420
    .local v6, "json":Ljava/lang/String;
    new-instance v1, Lcom/ubtechinc/developer/DeveloperAppButtenEventData;

    invoke-direct {v1}, Lcom/ubtechinc/developer/DeveloperAppButtenEventData;-><init>()V

    .line 1421
    .local v1, "appEvent":Lcom/ubtechinc/developer/DeveloperAppButtenEventData;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ubtechinc/developer/DeveloperAppButtenEventData;->setDatas([B)V

    .line 1422
    invoke-virtual {v1, p2}, Lcom/ubtechinc/developer/DeveloperAppButtenEventData;->setPackageName(Ljava/lang/String;)V

    .line 1425
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.ubtechinc.button.back"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v5, "intent2":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1428
    .local v3, "bundle2":Landroid/os/Bundle;
    const-string v8, "appbutton"

    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1429
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1430
    iget-object v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1431
    const/4 v8, 0x1

    return v8
.end method

.method public sendConfig2Server(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 1316
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1317
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "appdata"

    .line 1318
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ubtechinc/developer/DeveloperAppData;

    .line 1319
    .local v1, "appData":Lcom/ubtechinc/developer/DeveloperAppData;
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperAppData;->getDatas()[B

    move-result-object v4

    .line 1320
    .local v4, "data":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 1321
    .local v7, "lauange":Ljava/lang/String;
    const-string v8, "appdata"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lauange= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-virtual {p0, p3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1324
    .local v6, "json":[Ljava/lang/String;
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAppConfigData;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAppConfigData;-><init>()V

    .line 1325
    .local v0, "appConfig":Lcom/ubtechinc/developer/DeveloperAppConfigData;
    invoke-virtual {v1}, Lcom/ubtechinc/developer/DeveloperAppData;->getCmd()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/ubtechinc/developer/DeveloperAppConfigData;->setCmd(I)V

    .line 1326
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/ubtechinc/developer/DeveloperAppConfigData;->setTags([B)V

    .line 1327
    aget-object v8, v6, v11

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/ubtechinc/developer/DeveloperAppConfigData;->setDatas([B)V

    .line 1328
    invoke-virtual {v0, p2}, Lcom/ubtechinc/developer/DeveloperAppConfigData;->setPackageName(Ljava/lang/String;)V

    .line 1331
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.ubtechinc.config.back"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v5, "intent2":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1333
    .local v3, "bundle2":Landroid/os/Bundle;
    const-string v8, "appconfig"

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1334
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1335
    iget-object v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1336
    return v11
.end method

.method public sendCustomMessageRequest(Ljava/lang/String;[B)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .prologue
    .line 2036
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->checkAuthorize(Ljava/lang/Object;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 2037
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    if-ne v0, v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    sget v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->CUSTOM_CMD:I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 2040
    :cond_0
    return-object v0
.end method

.method public sendCustomMessageResp(Ljava/lang/String;[B)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .prologue
    .line 2056
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->checkAuthorize(Ljava/lang/Object;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 2057
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    if-ne v0, v1, :cond_0

    .line 2058
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mXmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    sget v2, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->CUSTOM_RESP:I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 2060
    :cond_0
    return-object v0
.end method

.method public speech_SetMIC(Z)Z
    .locals 5
    .param p1, "isWake"    # Z

    .prologue
    .line 392
    const/4 v1, 0x1

    .line 393
    .local v1, "bRet":Z
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    const-string v0, "Alpha2VoiceMainService"

    .line 398
    .local v0, "TAG":Ljava/lang/String;
    const-string v2, "Alpha2VoiceMainService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeechDemoActivity | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSpeechServiceUtil="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setWakeState(Z)V

    goto :goto_0
.end method

.method public speech_StartTTS(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 571
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 573
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    invoke-virtual {p0, v1, p1, v1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 575
    return-object v0
.end method

.method public speech_StopTTS()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 621
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 622
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 642
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 625
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 626
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 628
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 631
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 636
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 641
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopPlay()V

    move-object v1, v0

    .line 642
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_initGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "strGramma"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

    .prologue
    .line 819
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 820
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 852
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 823
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 824
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 826
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 829
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 832
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 833
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 837
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iput-object p2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechGrammarInitListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

    .line 839
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    new-instance v3, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V

    invoke-virtual {v2, p1, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->initSpeechGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;)V

    move-object v1, v0

    .line 852
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_setRecognizedLanguage(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 654
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 655
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 675
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 658
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 659
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 661
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 663
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 668
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 673
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setRecognizedLanguage(Ljava/lang/String;)V

    move-object v1, v0

    .line 675
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_setSelfInterrupt(Z)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "isInterrupt"    # Z

    .prologue
    .line 932
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 933
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 949
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 936
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 937
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 938
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 940
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 942
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 944
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 948
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setSelfInterrupt(Z)V

    move-object v1, v0

    .line 949
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_setVoiceName(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "strVoiceName"    # Ljava/lang/String;

    .prologue
    .line 516
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 517
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 539
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 520
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 521
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 523
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 527
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 532
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 537
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setVoiceName(Ljava/lang/String;)V

    move-object v1, v0

    .line 539
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_startRecognized(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 687
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 688
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 706
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 691
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 692
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 694
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 696
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 701
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 705
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onSpeech(Ljava/lang/String;)V

    move-object v1, v0

    .line 706
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_startTTS(Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strVoicName"    # Ljava/lang/String;

    .prologue
    .line 554
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 556
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 557
    return-object v0
.end method

.method public speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "strVoicName"    # Ljava/lang/String;

    .prologue
    .line 592
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 593
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 609
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 596
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 597
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 598
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 600
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 602
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 608
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, p1, v3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v0

    .line 609
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_stopGrammaer()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 898
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 899
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 918
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 902
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 903
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 905
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 908
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 911
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 912
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 916
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->stopSpeechGrammar()V

    move-object v1, v0

    .line 918
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_stopRecognized()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 747
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 748
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 767
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 751
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 752
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 754
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 757
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 762
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 766
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopSpeech()V

    move-object v1, v0

    .line 767
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speech_stopSpeechAndEnterIdleMode()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 3

    .prologue
    .line 958
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->checkAuthorize(Ljava/lang/Object;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-result-object v0

    .line 959
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    if-ne v0, v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->stopSpeechAndEnterIdleMode()V

    .line 962
    :cond_0
    return-object v0
.end method

.method public speech_understandText(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 5
    .param p1, "strText"    # Ljava/lang/String;
    .param p2, "mRobotTextListener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

    .prologue
    .line 781
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 782
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v3, :cond_0

    move-object v2, v1

    .line 804
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v2, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v2

    .line 785
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v3, :cond_1

    .line 786
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .line 788
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 791
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 795
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 796
    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v2, v1

    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 800
    .end local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iput-object p2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mRobotTextListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

    .line 801
    new-instance v0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V

    .line 802
    .local v0, "listener":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;
    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v3, p1, v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->textUnderstand(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;)V

    move-object v2, v1

    .line 804
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v2    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public speeh_startGrammar(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .prologue
    .line 865
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 866
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 886
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 869
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 870
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 872
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 875
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 878
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 879
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 883
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .line 884
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->startSpeechGrammar(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;)V

    move-object v1, v0

    .line 886
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public startSpeechNoWakeup()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 4

    .prologue
    .line 716
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 717
    .local v0, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->isAuthorize:Z

    if-nez v2, :cond_0

    move-object v1, v0

    .line 735
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .local v1, "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :goto_0
    return-object v1

    .line 720
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    if-nez v2, :cond_1

    .line 721
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .line 723
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 725
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/LuancherAppManager;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mAppID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ubtechinc/LuancherAppManager;->isLuancherAPP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    move-object v1, v0

    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0

    .line 734
    .end local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    :cond_2
    iget-object v2, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mSpeechServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->startSpeechNoWakeup()V

    move-object v1, v0

    .line 735
    .end local v0    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .restart local v1    # "nState":Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    goto :goto_0
.end method

.method public writeConfig(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1283
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "appdata"

    .line 1284
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/developer/DeveloperAppData;

    .line 1285
    .local v0, "appData":Lcom/ubtechinc/developer/DeveloperAppData;
    invoke-virtual {v0}, Lcom/ubtechinc/developer/DeveloperAppData;->getDatas()[B

    move-result-object v2

    .line 1286
    .local v2, "data":[B
    invoke-direct {p0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->removeMessyCode([B)[B

    move-result-object v2

    .line 1287
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 1288
    .local v6, "json":Ljava/lang/String;
    const-string v8, "appdata"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "json= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v8, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 1290
    .local v7, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/files/config.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v4, "file_file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 1293
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v5, "fs":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    .end local v5    # "fs":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v3

    .line 1297
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
