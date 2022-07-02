.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSecAbsKeyInputViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)V

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->initializeBottomContainerView(J)V

    return-void
.end method
