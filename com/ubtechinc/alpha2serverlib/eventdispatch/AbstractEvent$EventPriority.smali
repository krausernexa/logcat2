.class public Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventPriority;
.super Ljava/lang/Object;
.source "AbstractEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventPriority"
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x4

.field public static final PRIORITY_LOW:I = 0x2

.field public static final PRIORITY_MAX:I = 0x5

.field public static final PRIORITY_MIN:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventPriority;->this$0:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
