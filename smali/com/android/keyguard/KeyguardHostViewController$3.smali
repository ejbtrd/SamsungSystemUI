.class Lcom/android/keyguard/KeyguardHostViewController$3;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


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

    .line 310
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$3;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$3;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2200(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 315
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    .line 316
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$3;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1200(Lcom/android/keyguard/KeyguardHostViewController;)V

    :cond_0
    return-void
.end method
