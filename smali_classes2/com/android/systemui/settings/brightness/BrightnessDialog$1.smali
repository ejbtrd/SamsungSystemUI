.class Lcom/android/systemui/settings/brightness/BrightnessDialog$1;
.super Landroid/os/CountDownTimer;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;JJ)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
