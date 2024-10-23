.class Lai/api/services/SpeaktoitRecognitionServiceImpl$2;
.super Ljava/lang/Object;
.source "SpeaktoitRecognitionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/services/SpeaktoitRecognitionServiceImpl;->onSpeechCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;


# direct methods
.method constructor <init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;

    .prologue
    .line 246
    iput-object p1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$2;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$2;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-virtual {v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->cancel()V

    .line 250
    return-void
.end method
