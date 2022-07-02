.class Lcom/android/keyguard/KeyguardHostViewController$7;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 2

    .line 408
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2800(Lcom/android/keyguard/KeyguardHostViewController;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2802(Lcom/android/keyguard/KeyguardHostViewController;I)I

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2902(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 413
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1200(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 414
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 415
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$7;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2700(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    return-void
.end method
