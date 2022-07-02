.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;
.super Ljava/lang/Object;
.source "KeyguardKnoxGuardViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    return-void
.end method
