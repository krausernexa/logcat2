.class public final enum Lai/api/AIConfiguration$RecognitionEngine;
.super Ljava/lang/Enum;
.source "AIConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/AIConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lai/api/AIConfiguration$RecognitionEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/api/AIConfiguration$RecognitionEngine;

.field public static final enum Google:Lai/api/AIConfiguration$RecognitionEngine;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Speaktoit:Lai/api/AIConfiguration$RecognitionEngine;

.field public static final enum System:Lai/api/AIConfiguration$RecognitionEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lai/api/AIConfiguration$RecognitionEngine;

    const-string v1, "Google"

    invoke-direct {v0, v1, v2}, Lai/api/AIConfiguration$RecognitionEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/AIConfiguration$RecognitionEngine;->Google:Lai/api/AIConfiguration$RecognitionEngine;

    .line 53
    new-instance v0, Lai/api/AIConfiguration$RecognitionEngine;

    const-string v1, "System"

    invoke-direct {v0, v1, v3}, Lai/api/AIConfiguration$RecognitionEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/AIConfiguration$RecognitionEngine;->System:Lai/api/AIConfiguration$RecognitionEngine;

    .line 58
    new-instance v0, Lai/api/AIConfiguration$RecognitionEngine;

    const-string v1, "Speaktoit"

    invoke-direct {v0, v1, v4}, Lai/api/AIConfiguration$RecognitionEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/AIConfiguration$RecognitionEngine;->Speaktoit:Lai/api/AIConfiguration$RecognitionEngine;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lai/api/AIConfiguration$RecognitionEngine;

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->Google:Lai/api/AIConfiguration$RecognitionEngine;

    aput-object v1, v0, v2

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->System:Lai/api/AIConfiguration$RecognitionEngine;

    aput-object v1, v0, v3

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->Speaktoit:Lai/api/AIConfiguration$RecognitionEngine;

    aput-object v1, v0, v4

    sput-object v0, Lai/api/AIConfiguration$RecognitionEngine;->$VALUES:[Lai/api/AIConfiguration$RecognitionEngine;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/api/AIConfiguration$RecognitionEngine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lai/api/AIConfiguration$RecognitionEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lai/api/AIConfiguration$RecognitionEngine;

    return-object v0
.end method

.method public static values()[Lai/api/AIConfiguration$RecognitionEngine;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lai/api/AIConfiguration$RecognitionEngine;->$VALUES:[Lai/api/AIConfiguration$RecognitionEngine;

    invoke-virtual {v0}, [Lai/api/AIConfiguration$RecognitionEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/api/AIConfiguration$RecognitionEngine;

    return-object v0
.end method
