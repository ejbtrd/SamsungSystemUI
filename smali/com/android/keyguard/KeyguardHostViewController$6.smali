.class Lcom/android/keyguard/KeyguardHostViewController$6;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


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

    .line 366
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2500(Lcom/android/keyguard/KeyguardHostViewController;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2502(Lcom/android/keyguard/KeyguardHostViewController;I)I

    .line 371
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 372
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1600(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 374
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$6;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2700(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    :cond_0
    return-void
.end method
