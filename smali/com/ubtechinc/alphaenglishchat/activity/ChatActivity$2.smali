.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->loadConcept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 288
    const-string v1, "weather_concept.xml"

    .line 289
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 290
    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parseIntentConcept(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 289
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v1, "music_concept.xml"

    .line 292
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 293
    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parseIntentConcept(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 292
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v1, "remind_concept.xml"

    .line 295
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 296
    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parseIntentConcept(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 295
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v1, "joke_concept.xml"

    .line 298
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 299
    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parseIntentConcept(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 298
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "fileName":Ljava/lang/String;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
