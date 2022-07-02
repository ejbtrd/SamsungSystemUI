.class Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;
.super Ljava/lang/Object;
.source "SubscreenSignalInfoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$200(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$200(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    return-void
.end method
