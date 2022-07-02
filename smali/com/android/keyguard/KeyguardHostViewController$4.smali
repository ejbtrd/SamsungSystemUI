.class Lcom/android/keyguard/KeyguardHostViewController$4;
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

    .line 327
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$4;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$4;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 331
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$4;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$4;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2200(Lcom/android/keyguard/KeyguardHostViewController;)V

    :goto_0
    return-void
.end method
