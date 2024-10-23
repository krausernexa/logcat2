.class public final enum Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
.super Ljava/lang/Enum;
.source "WebServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtech/alpha2/core/utils/WebServerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha1s_bin:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha1s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha2s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha2s_service:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha2s_speech:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha_action:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha_engine:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

.field public static final enum alpha_hard:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha1s_ctrl"

    invoke-direct {v0, v1, v3}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha1s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha2s_service"

    invoke-direct {v0, v1, v4}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_service:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha2s_speech"

    invoke-direct {v0, v1, v5}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_speech:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha2s_ctrl"

    invoke-direct {v0, v1, v6}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .line 63
    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha1s_bin"

    invoke-direct {v0, v1, v7}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha1s_bin:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .line 65
    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha_hard"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_hard:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .line 67
    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha_action"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_action:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .line 69
    new-instance v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    const-string v1, "alpha_engine"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_engine:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha1s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_service:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_speech:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha2s_ctrl:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha1s_bin:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_hard:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_action:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->alpha_engine:Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->$VALUES:[Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    return-object v0
.end method

.method public static values()[Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->$VALUES:[Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    invoke-virtual {v0}, [Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    return-object v0
.end method
