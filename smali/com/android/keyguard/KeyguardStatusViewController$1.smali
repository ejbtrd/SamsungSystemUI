.class Lcom/android/keyguard/KeyguardStatusViewController$1;
.super Ljava/lang/Object;
.source "KeyguardStatusViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->onDensityOrFontScaleChanged()V

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/systemui/facewidget/KeyguardStatusBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/systemui/facewidget/KeyguardStatusBase;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    return-void
.end method
