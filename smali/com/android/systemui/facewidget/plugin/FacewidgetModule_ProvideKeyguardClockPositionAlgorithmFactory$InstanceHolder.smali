.class final Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/facewidget/plugin/FacewidgetModule_ProvideKeyguardClockPositionAlgorithmFactory;

    return-object v0
.end method
