.class public interface abstract Lcom/android/systemui/navigationbar/store/NavBarStore;
.super Ljava/lang/Object;
.source "NavBarStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;
    }
.end annotation


# virtual methods
.method public abstract addPack(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)V
.end method

.method public abstract apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z
.end method

.method public abstract getProvider(I)Ljava/lang/Object;
.end method

.method public abstract getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;
.end method

.method public abstract handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z
.end method

.method public abstract restorePacks()V
.end method

.method public abstract setProvider(ILjava/lang/Object;)V
.end method
