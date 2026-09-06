//
//  PlaygroundApp.swift
//  Playground Watch App
//
//  Created by Jinwoo Kim on 9/7/26.
//

/*
 (lldb) image lookup -vn dyld_shared_cache_file_path
 (lldb) expr -l c -f s -- ((const char * (*)(void))0x00000001800a5d08)()
 
 /Library/Developer/CoreSimulator/Volumes/watchOS_24R5355a/Library/Developer/CoreSimulator/Profiles/Runtimes/watchOS 27.0.simruntime/Contents/Resources/RuntimeRoot/System/Library/Caches/com.apple.dyld/dyld_sim_shared_cache_arm64
 */

import SwiftUI

@main
struct Playground_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
