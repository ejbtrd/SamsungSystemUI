.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1$onTick$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1$onTick$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1$onTick$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$viewCountAfterGC(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    return-void
.end method
