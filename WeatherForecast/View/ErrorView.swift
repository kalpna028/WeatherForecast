//
//  ErrorView.swift
//  WeatherForecast
//
//  Created by KalpnaMishra on 18/09/24.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var viewModel = WeatherViewModel()

    var body: some View {
        VStack(spacing: 10) {
            if let error = self.viewModel.error {
                Text("Error While Fethcing Weather Information").fontWeight(.medium)
                Text("\(error.errorMsg)").fontWeight(.medium)
                Text("Please try again").fontWeight(.medium)
            }
        }
    }
}

//#Preview {
//    ErrorView()
//}
