// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) nonlb 

package android.bluetooth;

import android.os.*;

public interface IBluetoothStateChangeCallback
    extends IInterface {
    public static abstract class Stub extends Binder
        implements IBluetoothStateChangeCallback {
        private static class Proxy
            implements IBluetoothStateChangeCallback {

            public IBinder asBinder() {
                return mRemote;
            }

            public String getInterfaceDescriptor() {
                return "android.bluetooth.IBluetoothStateChangeCallback";
            }

            public void onBluetoothStateChange(boolean flag) throws RemoteException {
                int i;
                Parcel parcel;
                Parcel parcel1;
                i = 1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("android.bluetooth.IBluetoothStateChangeCallback");
                if(!flag)
                    i = 0;
                parcel.writeInt(i);
                mRemote.transact(1, parcel, parcel1, 0);
                parcel1.readException();
                parcel1.recycle();
                parcel.recycle();
                return;
                Exception exception;
                exception;
                parcel1.recycle();
                parcel.recycle();
                throw exception;
            }

            private IBinder mRemote;

            Proxy(IBinder ibinder) {
                mRemote = ibinder;
            }
        }


        public static IBluetoothStateChangeCallback asInterface(IBinder ibinder) {
            Object obj;
            if(ibinder == null) {
                obj = null;
            } else {
                IInterface iinterface = ibinder.queryLocalInterface("android.bluetooth.IBluetoothStateChangeCallback");
                if(iinterface != null && (iinterface instanceof IBluetoothStateChangeCallback))
                    obj = (IBluetoothStateChangeCallback)iinterface;
                else
                    obj = new Proxy(ibinder);
            }
            return ((IBluetoothStateChangeCallback) (obj));
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j) throws RemoteException {
            boolean flag = true;
            i;
            JVM INSTR lookupswitch 2: default 32
        //                       1: 55
        //                       1598968902: 46;
               goto _L1 _L2 _L3
_L1:
            flag = super.onTransact(i, parcel, parcel1, j);
_L5:
            return flag;
_L3:
            parcel1.writeString("android.bluetooth.IBluetoothStateChangeCallback");
            continue; /* Loop/switch isn't completed */
_L2:
            parcel.enforceInterface("android.bluetooth.IBluetoothStateChangeCallback");
            boolean flag1;
            if(parcel.readInt() != 0)
                flag1 = flag;
            else
                flag1 = false;
            onBluetoothStateChange(flag1);
            parcel1.writeNoException();
            if(true) goto _L5; else goto _L4
_L4:
        }

        private static final String DESCRIPTOR = "android.bluetooth.IBluetoothStateChangeCallback";
        static final int TRANSACTION_onBluetoothStateChange = 1;

        public Stub() {
            attachInterface(this, "android.bluetooth.IBluetoothStateChangeCallback");
        }
    }


    public abstract void onBluetoothStateChange(boolean flag) throws RemoteException;
}
