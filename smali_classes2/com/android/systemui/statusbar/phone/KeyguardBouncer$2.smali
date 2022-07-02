.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->consumeCustomMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 356
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "@bouncer.no_animation"

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardHostViewController;->showErrorMessage(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardHostViewController;->appear(I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardHostViewController;->appear(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardHostViewController;->showErrorMessage(Ljava/lang/CharSequence;)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardHostViewController;->appear(I)V

    .line 371
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$602(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostViewController;->onResume()V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostViewController;->resetSecurityContainer()V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    :cond_4
    const/16 p0, 0x3f

    const/4 v0, 0x2

    .line 377
    invoke-static {p0, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method
