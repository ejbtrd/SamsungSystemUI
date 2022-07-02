.class Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;
.super Ljava/lang/Object;
.source "BinderCallMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field compareDuration:J

.field duration:J

.field logTime:J

.field stackTrace:Ljava/lang/String;

.field startTime:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->compareDuration:J

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->logTime:J

    .line 244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;-><init>(J)V

    return-void
.end method
