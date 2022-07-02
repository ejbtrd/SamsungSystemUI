.class public Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeScreenStatePreventingAdapter.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    return-void
.end method

.method private static isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method
