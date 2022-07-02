.class Lcom/android/keyguard/KeyguardFMMViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFMMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFMMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteLockInfoChanged()V
    .locals 2

    const-string v0, "KeyguardFMMView"

    const-string v1, "onRemoteLockInfoChanged"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->access$000(Lcom/android/keyguard/KeyguardFMMViewController;)V

    return-void
.end method
