.class public final synthetic Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarText()V

    return-void
.end method
