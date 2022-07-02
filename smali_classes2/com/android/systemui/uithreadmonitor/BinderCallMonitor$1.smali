.class Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;
.super Ljava/lang/Object;
.source "BinderCallMonitor.java"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactEnded(Ljava/lang/Object;)V
    .locals 7

    .line 130
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$408()I

    .line 138
    :cond_2
    check-cast p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->startTime:J

    sub-long/2addr v0, v2

    .line 140
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$000()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->compareDuration:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 141
    :cond_3
    iput-wide v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->duration:J

    const/16 v2, 0x14

    const/4 v3, 0x2

    const-string v4, "    "

    .line 142
    invoke-static {v3, v2, v4, p1}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$500(IILjava/lang/String;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BinderCallMonitor"

    invoke-static {v4, v2}, Lcom/android/systemui/keyguard/KeyguardLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    invoke-static {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$600(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)Lcom/android/systemui/log/SamsungServiceLogger;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->stackTrace:Ljava/lang/String;

    aput-object p1, v3, v0

    const-string p1, "   * %dms\n%s"

    invoke-static {p1, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-interface {p0, v4, v2, p1}, Lcom/android/systemui/log/SamsungServiceLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 2

    .line 115
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$000()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    and-int/2addr p3, p1

    if-eq p3, p1, :cond_0

    .line 116
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    invoke-static {p1}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$100(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return-object p2

    .line 120
    :cond_1
    new-instance p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    invoke-static {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->access$200(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;-><init>(JLcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;)V

    return-object p1
.end method
