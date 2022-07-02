.class Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardUCMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final opCode:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 389
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    return-void
.end method

.method private getUCMStatus()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$600(Lcom/android/keyguard/KeyguardUCMViewController;)V

    .line 421
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$200(Lcom/android/keyguard/KeyguardUCMViewController;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$300(Lcom/android/keyguard/KeyguardUCMViewController;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 430
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "KeyguardUCMPinView"

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetStatus thread result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$200(Lcom/android/keyguard/KeyguardUCMViewController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 442
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->access$700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$802(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    .line 444
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 398
    iget p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->getUCMStatus()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    .line 413
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$400(Lcom/android/keyguard/KeyguardUCMViewController;)Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$200(Lcom/android/keyguard/KeyguardUCMViewController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$300(Lcom/android/keyguard/KeyguardUCMViewController;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 414
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$500(Lcom/android/keyguard/KeyguardUCMViewController;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 381
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$100(Lcom/android/keyguard/KeyguardUCMViewController;Z)V

    return-void
.end method
