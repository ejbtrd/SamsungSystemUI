.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    .line 515
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DUAL_LCD_FOLDER:Z

    if-eqz p1, :cond_0

    .line 516
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
