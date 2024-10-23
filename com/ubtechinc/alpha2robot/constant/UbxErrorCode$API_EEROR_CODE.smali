.class public final enum Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
.super Ljava/lang/Enum;
.source "UbxErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API_EEROR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

.field public static final enum API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

.field public static final enum API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

.field public static final enum API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

.field public static final enum API_ERROR_PARAMETER:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

.field public static final enum API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    const-string v1, "API_ERROR_NOT_INIT"

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 23
    new-instance v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    const-string v1, "API_ERROR_SUCCEED"

    invoke-direct {v0, v1, v3}, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 28
    new-instance v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    const-string v1, "API_ERROR_APPID_NOT_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 30
    new-instance v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    const-string v1, "API_ERROR_AUTHORIZE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 32
    new-instance v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    const-string v1, "API_ERROR_PARAMETER"

    invoke-direct {v0, v1, v6}, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_PARAMETER:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_NOT_INIT:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_SUCCEED:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_APPID_NOT_ACTIVE:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_AUTHORIZE_ERROR:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->API_ERROR_PARAMETER:Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->$VALUES:[Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->$VALUES:[Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    invoke-virtual {v0}, [Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    return-object v0
.end method
