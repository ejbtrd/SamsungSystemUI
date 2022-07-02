.class Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardViewMediator"

    invoke-static {v0, p2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.samsung.keyguard.CLEAR_LOCK"

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    .line 288
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    :cond_0
    return-void
.end method
