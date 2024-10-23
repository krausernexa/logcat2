.class public final enum Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;
.super Ljava/lang/Enum;
.source "AbstractEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_BLOCK:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_PAUSE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_PREPARE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_RESUME:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_START:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field public static final enum STATE_STOP:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_PREPARE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 41
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_START"

    invoke-direct {v0, v1, v4}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_START:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 42
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_BLOCK"

    invoke-direct {v0, v1, v5}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_BLOCK:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 43
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_PAUSE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 44
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_RESUME"

    invoke-direct {v0, v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_RESUME:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 45
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    const-string v1, "STATE_STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_STOP:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_PREPARE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_START:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_BLOCK:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_PAUSE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_RESUME:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_STOP:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->$VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    return-object v0
.end method

.method public static values()[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->$VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    invoke-virtual {v0}, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    return-object v0
.end method
