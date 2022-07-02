.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(JIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $reason:I

.field final synthetic $timestamp:J

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    .line 107
    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->sendIntent(IJ)V

    return-void
.end method
