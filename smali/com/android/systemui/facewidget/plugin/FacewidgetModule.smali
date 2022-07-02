.class public abstract Lcom/android/systemui/facewidget/plugin/FacewidgetModule;
.super Ljava/lang/Object;
.source "FacewidgetModule.java"


# direct methods
.method public static provideKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
    .locals 1

    .line 63
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;-><init>()V

    return-object v0
.end method
