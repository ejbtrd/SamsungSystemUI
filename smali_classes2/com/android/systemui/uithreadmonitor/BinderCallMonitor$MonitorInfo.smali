.class Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;
.super Ljava/lang/Object;
.source "BinderCallMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorInfo"
.end annotation


# instance fields
.field duration:J

.field enabled:Z

.field infinite:Z

.field timeOut:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->enabled:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->infinite:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;-><init>()V

    return-void
.end method
