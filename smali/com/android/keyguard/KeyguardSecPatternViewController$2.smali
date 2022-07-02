.class Lcom/android/keyguard/KeyguardSecPatternViewController$2;
.super Ljava/lang/Object;
.source "KeyguardSecPatternViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$100(Lcom/android/keyguard/KeyguardSecPatternViewController;I)V

    return-void
.end method
