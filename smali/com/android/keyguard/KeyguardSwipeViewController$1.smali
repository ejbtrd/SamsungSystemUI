.class Lcom/android/keyguard/KeyguardSwipeViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSwipeViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSwipeViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeViewController$1;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController$1;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    return-void
.end method
