.class Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;
.super Ljava/lang/Object;
.source "SingleThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 17
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo p1, "newThread on Executor"

    .line 20
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return-object p0
.end method
