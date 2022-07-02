.class public interface abstract Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
.super Ljava/lang/Object;
.source "OperatorInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;,
        Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;
    }
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public varargs abstract get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getFakeNetworkConditions()Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;
.end method

.method public varargs abstract isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z
.end method

.method public abstract isFakeConditionEnabled()Z
.end method

.method public abstract refreshCarrierFeature(I)V
.end method

.method public varargs abstract set(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;[Ljava/lang/Object;)V
.end method
