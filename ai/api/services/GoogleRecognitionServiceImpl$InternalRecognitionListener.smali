.class Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;
.super Ljava/lang/Object;
.source "GoogleRecognitionServiceImpl.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/services/GoogleRecognitionServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalRecognitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/services/GoogleRecognitionServiceImpl;


# direct methods
.method private constructor <init>(Lai/api/services/GoogleRecognitionServiceImpl;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/services/GoogleRecognitionServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p2, "x1"    # Lai/api/services/GoogleRecognitionServiceImpl$1;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;-><init>(Lai/api/services/GoogleRecognitionServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 310
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$800(Lai/api/services/GoogleRecognitionServiceImpl;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 321
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$600(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-static {}, Lai/api/services/GoogleRecognitionServiceImpl;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpeechRecognizer.ERROR_NO_MATCH, restartRecognition()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1000(Lai/api/services/GoogleRecognitionServiceImpl;)V

    .line 345
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1100(Lai/api/services/GoogleRecognitionServiceImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1100(Lai/api/services/GoogleRecognitionServiceImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, "description":Ljava/lang/String;
    new-instance v0, Lai/api/model/AIError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speech recognition engine error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lai/api/model/AIError;-><init>(Ljava/lang/String;)V

    .line 337
    .end local v1    # "description":Ljava/lang/String;
    .local v0, "aiError":Lai/api/model/AIError;
    :goto_1
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2, v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1200(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIError;)V

    .line 340
    .end local v0    # "aiError":Lai/api/model/AIError;
    :cond_1
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1300(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-virtual {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->clearRecognizer()V

    .line 344
    :cond_2
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lai/api/services/GoogleRecognitionServiceImpl;->access$402(Lai/api/services/GoogleRecognitionServiceImpl;Z)Z

    goto :goto_0

    .line 334
    :cond_3
    new-instance v0, Lai/api/model/AIError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speech recognition engine error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lai/api/model/AIError;-><init>(Ljava/lang/String;)V

    .restart local v0    # "aiError":Lai/api/model/AIError;
    goto :goto_1
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 396
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 386
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v1}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    .local v0, "partialRecognitionResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-virtual {v1, v0}, Lai/api/services/GoogleRecognitionServiceImpl;->onPartialResults(Ljava/util/List;)V

    .line 392
    .end local v0    # "partialRecognitionResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 290
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$500(Lai/api/services/GoogleRecognitionServiceImpl;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lai/api/services/GoogleRecognitionServiceImpl;->access$602(Lai/api/services/GoogleRecognitionServiceImpl;Z)Z

    .line 294
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 350
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v3}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const-string v3, "results_recognition"

    .line 352
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 354
    .local v2, "recognitionResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 356
    .local v1, "rates":[F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 357
    const-string v3, "confidence_scores"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 360
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    :cond_1
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    new-instance v4, Lai/api/model/AIResponse;

    invoke-direct {v4}, Lai/api/model/AIResponse;-><init>()V

    invoke-static {v3, v4}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1400(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIResponse;)V

    .line 377
    .end local v1    # "rates":[F
    .end local v2    # "recognitionResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v3}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1300(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-virtual {v3}, Lai/api/services/GoogleRecognitionServiceImpl;->clearRecognizer()V

    .line 381
    :cond_3
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v3, v5}, Lai/api/services/GoogleRecognitionServiceImpl;->access$402(Lai/api/services/GoogleRecognitionServiceImpl;Z)Z

    .line 382
    return-void

    .line 364
    .restart local v1    # "rates":[F
    .restart local v2    # "recognitionResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0}, Lai/api/model/AIRequest;-><init>()V

    .line 365
    .local v0, "aiRequest":Lai/api/model/AIRequest;
    if-eqz v1, :cond_5

    .line 366
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lai/api/model/AIRequest;->setQuery([Ljava/lang/String;[F)V

    .line 372
    :goto_1
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-virtual {v3, v2}, Lai/api/services/GoogleRecognitionServiceImpl;->onPartialResults(Ljava/util/List;)V

    .line 373
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    iget-object v4, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v4}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1500(Lai/api/services/GoogleRecognitionServiceImpl;)Lai/api/RequestExtras;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lai/api/services/GoogleRecognitionServiceImpl;->access$1600(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIRequest;Lai/api/RequestExtras;)V

    goto :goto_0

    .line 368
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lai/api/model/AIRequest;->setQuery(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRmsChanged(F)V
    .locals 1
    .param p1, "rmsdB"    # F

    .prologue
    .line 302
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0}, Lai/api/services/GoogleRecognitionServiceImpl;->access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->access$700(Lai/api/services/GoogleRecognitionServiceImpl;F)V

    .line 305
    :cond_0
    return-void
.end method
